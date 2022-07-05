Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE56115DA
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 03:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656992212;
	h=To:Subject:From:Message-Id:Date;
	bh=s3c9a2QFlSBjo0vetmEWTdZHPbz/DoooyYg23J+hXEE=;
	b=ASestHpIFcqiwVnAsZXhb43ODDLGQlohjjngmlbE6ukbACBNSVg/I9T5wVrfvl5c
	UBwxDxYAynsjWqkUFg1yTKRdHFcqzYksSms6E9lY6C4FxLsMaeIOZxxAnWpqXzMeHgu
	omg/zOSpYGRdO+P6q7qhc8y0A+zwVeBls/pGBs5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656992212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s3c9a2QFlSBjo0vetmEWTdZHPbz/DoooyYg23J+hXEE=;
	b=cGyM//yeA0q1NvGapE64jmldl7oRpwTNDvbdYQO24qhS19OI6fYn4exWHfGE2mfK
	PwXGQiarAtWUPviUcfBe+KUbibBD1NyjlJi+X4J/t2XQyke9MDVufAoA4iz6it17k8V
	wf1lDsyQuqQVS+AW0+BhSZrmtPa3ZpE1ArV4FqKo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc6ea51b-587c2965-11f6-4921-af4a-3ab052ce7d1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08e81b38fabc129d16b7a9adda8881c1bc290c9ff660ed6e81942ec646e50b54
Date: Tue, 5 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656992212
