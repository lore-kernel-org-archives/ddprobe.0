Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E864C6C
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 02:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713666623; cv=none; b=Uw24vNDmoeE8AG27FNME0v0N7bAQAP+V6DskRIFdrgPeRx6ddBIziPli9sW8E8IdzuJsLI8YmyEL9dop0r82/4LyRDg6S8CnCKmh55QXPeC3LuHUY16rHkuXKnSr/ug2MQDpEFnmVHCYhsELYhZlQVw1CZnWXkpHGybXhs+kRNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713666623; c=relaxed/simple;
	bh=JGxdO6yisJdMnGELHwJ8ULuT/US8ngdaXY2GFRzdcFg=;
	h=To:Subject:From:Message-Id:Date; b=VtsF+gF6xNRK/Q4XbE2FPM/7VOGQUdULQnrT8G5Be35rslE6ens8o5vw79nLebqvr/Ng++9iqZoLehqe6fNxQmhgwnZcEkZyq1mS72O1oPg5o0bb6AV3YHUFyI10+nalVnNYTrJGgsQPij9/8/GPAq8LcNJ7bcBcdCGp9E8eDDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJ6R7V2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJ6R7V2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D320EC072AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 02:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713666622;
	bh=JGxdO6yisJdMnGELHwJ8ULuT/US8ngdaXY2GFRzdcFg=;
	h=To:Subject:From:Date:From;
	b=BJ6R7V2WRzbKrlj1N86qS5JqljJ8l7bAsRinsJHo7TNKVUR1Dw2ETED2tt/1ygR+9
	 yXlFZm5sipIlXfEwU3Lhu7Arf50UCpVtcbhRiBUwYdKmh5gfl+M4FuaTBFtDkLRhjA
	 d3Tv7Q109B2OFu6yB1HgP9EFhYVky09Wp8DuQGhMt1UGiAB+SGR7WtK/nZX7D0IrjZ
	 kSfZSOHy27V65TM2z+TDZ3TAM8nx3Dw4qQiRNGtxgMkSSoRbl9SYOxQ555H+51VlHP
	 Tt1GXccjj1HfaOuvxWK2D2HwLM/aXsXaz/GRouZtCPUv+98Y6FIyYtmd5haQJ0ZN1l
	 x2MZYIyjFo4Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF82EC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 02:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171366662275.29779.9563999538345713162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a24fe58a4d5648c251d49447cb2bb037d67c83fd92d6e6e849b6fd3e1d3a673
Date: Sun, 21 Apr 2024 02:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713666622
