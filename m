Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4909815A4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 01:51:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF739C433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673229087;
	bh=xbFuvDPDZJruB86x7j7y/Ulh0JqM+zP9BtCFea9uCS8=;
	h=To:Subject:From:Date:From;
	b=BefYw1R0VLf7GTvPMolb3wxdj7BmByoZfTV1fB4UDnxRwVknW6v8SD+cvrYACojJ7
	 BM7JQc81HKzWSr3yJaoW/og6uxHAJSFYOaQmXu9MuV+VpX4tThmpRhnxJ32U394eDR
	 ZqxNIR4zKEsprxKNT1Pfmg70hCD15QhH+iHoAner4b/VwIGZD68dlDJ8XociUXxwnJ
	 mjXxv6DuWnG5r1g290IG2ODHG7ERB5BSMZ0emz3IPvVCezdhjjHLKqJaA3e4e6LyXl
	 vtqVTAsbTLS4yo05CLWEWd86ojsLeXAvjPsQWNaSXKBa/8z4Nywrin1tzN+tkFWRhI
	 sESLL6RPyuFbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1638C54EBC
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167322908777.28859.3469503841620099543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855461a971afd3e31afa0c68bed46013389810fa8612a4918989171fcc379e72
Date: Mon, 09 Jan 2023 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673229087
