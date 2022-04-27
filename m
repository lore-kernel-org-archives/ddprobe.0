Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B95E7B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 22:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651099558;
	h=To:Subject:From:Message-Id:Date;
	bh=yXTphgIdS1enKzv5/lB1WXtkjIDte7gL4UorA4PGO8o=;
	b=HAYFF9e3O8LrZ7JQOA+g5++gDWZrNHQjAJleQtbPFZLvo42fm6ns75SnDtwPs5on
	a4YnHWWWraAotE5lYS/57q3Fh56cYhxBAX/rMrh06q37c22qnBVNLIhJOBDaXln7cWG
	K2rFABlfNGVR4RDK4AJ1f5TCK+JIFnc9v51M63Y0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651099558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yXTphgIdS1enKzv5/lB1WXtkjIDte7gL4UorA4PGO8o=;
	b=epB5C8c3Kt6SvORHY5/2HxITUBK2aZlQMpTWVxAkDfDOFwvtg1VsiLImQ5Uzapwd
	Lr5r+t6fVEXGd4y+aqTjcLdoZqOnDE+4eW5l1ZQTwUC/nJfJzUg88VKEo/9jivKi77J
	valuOHaNrj5n23rAp37tjpbh8AUVcv/J9StFJKTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806d33e17d-7c8581c6-3f74-44ea-a3b7-b1f9c8d176cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c92dca612f8ea09765527a0c5a46e12551ee71dde3d627b83b19e6912cd219a
Date: Wed, 27 Apr 2022 22:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651099558
