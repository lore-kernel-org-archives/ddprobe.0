Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197B82C08D5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766924634; cv=none; b=MUtE3sXMoEKrGTnEf4/itfdGaSNYlAYSSqT71CMDRUiRkM/CkMPrS13Z6NApsOFV6thJIVTVWN+BOx1Qmc4IWaO8ufSQMrY73crXPol5uloea8WEQPzKQ3xA5w1GiWFZcx8189MluNfbKH+4cfKbXIz4Eq/KwBKr0m9Ifp9NwdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766924634; c=relaxed/simple;
	bh=KwfG+h5RdQaDkiw3HiWM3LKPZs1oj6GIFW40u8sCRn8=;
	h=To:Subject:From:Message-Id:Date; b=mdnBtpEnWkSFKxbM85iY+st+NYaWd87MML6aSEqnqyd7T19kGBYvTizFW6SE+NHnHtA68oY+lHTmO0sNjKHAkmMjs7fwPvSJKcFwxCOFWSQkHhKgxnZvfmfMXKfPkDOwVJ+tw93/3e5mB0VNQnCPknRJXCY7Kq26o+fv8Mw3hqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGnrhfkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGnrhfkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7411C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766924633;
	bh=KwfG+h5RdQaDkiw3HiWM3LKPZs1oj6GIFW40u8sCRn8=;
	h=To:Subject:From:Date:From;
	b=HGnrhfkLWnu/s16Tcxz/SzQJI/2iELX7Wv8eIx7b6g+8BGv59TY5rzyGWOgDuvL4y
	 CPEuuNR9akIJ2vUCRrnKmuGi4DB5yqKkx5XuJ+8I5VbhuOcjDlyGy1SfRatTZV4xCl
	 ykrE43nJereAq7UxVR1pLdX92aOeY0Ks3Avd7k/X6NwF0m4dCao97NM4lUoUN0MUve
	 3H+oKMNaffG/M4Islkx3bvjHhd2Ebk+b822jmYnQa0025OKCP/SlN5ccXFibniJrpR
	 foY9SHlhID55IXYxw4iRxT17RH1dDytK6RRyQKBoSX4p4iEwQ0QfHQ9fpTyJTAe3vE
	 T9KgY6z72ogeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C15D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692463358.24034.742495277330438140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322c45347f7945c731bc782b5733873b4754d1949a0944e9df48d0f583740769
Date: Sun, 28 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766924633
