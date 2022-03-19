Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B50A20E4
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 06:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647669985;
	h=To:Subject:From:Message-Id:Date;
	bh=q6ObPvj2xE9/QueVXyq9ymxEWjzZdoNUlZLckinGPWc=;
	b=K3dVLGFtolsReeLgFHK1m0DlLY9qeS6LO3HpUq+NzUvmEQR4z/BjLRN+ry/HSshY
	9xKltxeg35X+eeKy5YNBlmj+tS9m58xjuRrsFRuZBksOXeiNDzfIO4ddLri5EB2VurZ
	pvc//cgLglxJSP4ASJRVx+myUhe10iuYJddFGlDI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647669985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q6ObPvj2xE9/QueVXyq9ymxEWjzZdoNUlZLckinGPWc=;
	b=OvMPV5Y+e+YWvA6+gvTMLnGUFlvIBpzRWp3cw4xvwbQEHnDCjiJROxuifxfdfOuz
	pPW//DwJjjrvAjuvFTUzy4fYoigvi2aZDkyRIGAPGQLUkRoGCbfeeIy/GDVbdigvzDp
	MFL26dH252mHg2Y7nnEmEIdl/iGTNDbeOF2mbzzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0c8bde3-f15719b0-b76a-42d4-8aeb-17c6f96b4c10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39434045e78315bbb03cecdc81126e06ed3e7eca53186a0fa17578f85b2881af
Date: Sat, 19 Mar 2022 06:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647669984
