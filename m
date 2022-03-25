Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4190B23AD
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 10:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648203298;
	h=To:Subject:From:Message-Id:Date;
	bh=mjhGx3vbSW3392hu1iC73R8xsJRBSzOlfHsa3ZIoFQk=;
	b=bs7/h2iWXGgnDfDCsG/CqXddV3vM6m3+k/44a17SKaTkNMe7idBmuwXZ1AVPkKgl
	hvBeQyptkmTy+9AJOTV8EOU+08PH1KdMpfiA8O5+iqFUkSARJWMqMPEr9Hx3n5PuroE
	YWoL6YEpH4185/NEdZ09OEkgBe8ex+633dfbSSOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648203298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mjhGx3vbSW3392hu1iC73R8xsJRBSzOlfHsa3ZIoFQk=;
	b=L5pOj4Wqsb6zI05BHbbNek7CtCDYboP8Kv+Zd0opY/yJJnQgrRFz6B1MtKtJ0aNg
	XmVMi1myMDySodo8HP+D5UNPFy0KeI9hxIGby+EttsZhBDAiihdwsYmLkgKtBYt00FD
	46+SmhBU8OHjV6xo4C2lidlEKF02l/3+ZIdrk/0A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc0927603-a6eaf02e-f28a-4e17-be42-a65034537657-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 420964698a18e37433239563af0b037d2e09590a14448a0d9683c5d845b30ed7
Date: Fri, 25 Mar 2022 10:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648203298
