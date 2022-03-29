Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364CE257F
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 18:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648578238;
	h=To:Subject:From:Message-Id:Date;
	bh=sn8DFBaT5GCPZgxat28dKoKc5xrG6/0ruE1vNlqs7N8=;
	b=LJupscFS7aqwY/FabxkW6IOauUd7Bk7rD/ZasnFtAfb+LhsFoBWf8Gt2QSqsgj1/
	ubqM29C9dOqt96pcrXvGufisESQdd7jR4Qbiovh6iH8biZxQ2IHq8IkuxDGW1t8662G
	uhNA4B6E5j4fimXSeuZfZDo2rHucQaThI/FoLOKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648578238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sn8DFBaT5GCPZgxat28dKoKc5xrG6/0ruE1vNlqs7N8=;
	b=TcZVvb2yPHPJC2QT431zuzUcYt7CguzSt3iMutNcle5WViMV0DBdY7Ih2gxrZDfY
	QzZP2M2q1EUPptowknjpwRi6wneS/ed5vIsJfv6zfUkcCHG+LNGq3z+grJx3NMs5DF9
	uARGcfCrZlaIzVH+GfHPk5B0l3sZN8w6BuD6DKqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd6eb976d-8cbecfd6-5ef2-4b16-b8f6-813c6c8b8d7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba24945f05c2eb3969fcd818c62102e39a936723703416ab3b1bb72cf6d0dbd6
Date: Tue, 29 Mar 2022 18:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648578238
