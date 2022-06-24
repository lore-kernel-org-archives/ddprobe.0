Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027001FC8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 03:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656042412;
	h=To:Subject:From:Message-Id:Date;
	bh=lM5cxT3VJ54NW+iD9OLtkCcu8XVP5mFOsgNyHRnIkVk=;
	b=TQNTie6/8zD0ZyiNr5zgU6lcfT6rQMT+taq+0DVpQq8esyMCbwdH7Gra2qIzg/7X
	aNfD0SRwkynrfOMWXagA4qilMwsi9G2n9WLeDMnqNbqnhjBxRdxCY6K2YIGjLYXQB5G
	VIRb98BxPaCj3lTJaZV80TMV419LoutmwRFK1Ifk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656042412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lM5cxT3VJ54NW+iD9OLtkCcu8XVP5mFOsgNyHRnIkVk=;
	b=VilBu3EgmUFHxinBdHDBq+A9PmPeE2YCO42nNI4xvgS9zS1+mARhiJF1/jrXkBE5
	rq/Jv8G+cJb2HBAlhL4A+nnbnxgl+lHY8PobukGcadJDlS79TruExAd2xsZ+10aGjRZ
	PyFcepdeBARHt3O6mQC/N2uI5Bi9zc8lctSG3fAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018193d1d90c-d974b308-3181-4b55-bf37-55d53fd275a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38fd2e2d3723db194dc1f7a0aa5901a4f449a3af6132752867f9124af7e84e09
Date: Fri, 24 Jun 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656042412
