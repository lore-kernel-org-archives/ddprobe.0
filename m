Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE30628E4
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 13:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655386919;
	h=To:Subject:From:Message-Id:Date;
	bh=rPHBMrpIt0YBD0knp1H5mmaZLHEfQWrvEDsaLRUWmHc=;
	b=iQ3p4ey6KEDK1IcJaxtO3+b4kDivu2sdB6N4s37xvp2CAwdKfCSDowUl5DDSX0/d
	tTBngr1cy04QKePaKayr9EC080GppswOplT5jfYi1/YdRCjChFknlCVeWK96JPAlLce
	6H9+pnseQIWHeRDn2iVTp8x1sXnwZGJWQacOKDas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655386919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rPHBMrpIt0YBD0knp1H5mmaZLHEfQWrvEDsaLRUWmHc=;
	b=MMj3lEo9G9IZ6KhN1T51TAtHwENgpNhWDFc/e2pIc3hdk1Wn2izM+DJhkaKNi14O
	XMkH+c9SCGFLlkyA6OnXaGnCws5nf8O3KzflWj3Ja9ZUbJ4Uuln5RH1J19WMGgNlNKB
	tiuYcflbu6b/AGYa5ruZIrLfUGECpS21vMrwc2GA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816cbfd14c-42a8134e-06e3-40e9-af44-df3d1a096d7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48b07582b1b4e334129109555c18c9b3fb2043f5fb43f0bff3e8599e2e67dc5f
Date: Thu, 16 Jun 2022 13:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655386919
