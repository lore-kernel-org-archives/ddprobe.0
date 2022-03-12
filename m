Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 977A64280
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647086784;
	h=To:Subject:From:Message-Id:Date;
	bh=DJlQvYnefqB15O6Cj1swwp/LmMVAfp+avDwMldcC4dc=;
	b=aTftk3sFhvzmZX0CtCknH4/NPhnEilMLoydL/Asv8w/kOvx7Xt5nYPSDmYq+uFD6
	VB412f4TrFxKKOmm+WuaXIqkUD5bBdehRel7ghInp+nZUmtDH36gMquEY91WMupiuQP
	yyFI9Owx5craLh6Epegu+ARPq/fcxwJCz5+Oz31g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647086784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DJlQvYnefqB15O6Cj1swwp/LmMVAfp+avDwMldcC4dc=;
	b=RBcQxi8nFklo8pjXTSZ8BEbHxjJdUIL4Ue/QKKfs43xQkfig/x9xVPrprmO4P5ns
	T7CDOq0eFBx1lbyKd25qXKMO9xF4hFeL+b8PcMUNe6CSNfhBxjTWOzhwN+waBhNcdWQ
	CE2bWN8my8HIid3w/PRyFYKw8a4XdBcz5cODSO4s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e05d0e6-20d95de0-8c62-4b3c-b404-fbd1c9f1d45c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed46a0af9ce7b3aaf09b8457786584839d81c76736dcd4cbaf59de82d5142c27
Date: Sat, 12 Mar 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647086784
