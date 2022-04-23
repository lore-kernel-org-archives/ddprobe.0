Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637FA3201
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 19:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650743098;
	h=To:Subject:From:Message-Id:Date;
	bh=SAZGZX/Ww9hwT9TxWSS4FwTDvD7tXBgNaJkcaU2HJK4=;
	b=CHil3rbvX3En35BIAViyOLS5W80QDNjk5C0Y3O0qVgGihv/pIULyD/cpVdxDa+x+
	WR9H4EFd9soyKYDe/QcPm97H84Df8ENksRyh1AHCWqVbQNYkroKzfgCamqWAzrH5EnB
	+CKUT/RYm5LYFMA/CO9REmqSl7hZM1WDq1s1uTc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650743098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SAZGZX/Ww9hwT9TxWSS4FwTDvD7tXBgNaJkcaU2HJK4=;
	b=HMgSdRAA3Mae5qAZMZyahVWqXVoWbBsmbomD7dcThFDaZGQeAZM7e0AhbOy+qfSs
	wyDvvw218Q612eo9P72abmv01geTundKxr5S4KZFixs17bj/AaU8Ap4bvyEZvmUKn0/
	P6M8LJK9DZOZDn/7n1QRk/3PgrpCdxSGO+8q0MU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018057f4bb8d-beab7854-a27b-4128-ae3f-b11fe6963b8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba4a3de65fd6553ecf1c3d45636082ddcd662a8504c83c3967433b27f664cbb5
Date: Sat, 23 Apr 2022 19:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650743098
