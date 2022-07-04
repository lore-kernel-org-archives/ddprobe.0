Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE9F3FE0
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 13:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656941812;
	h=To:Subject:From:Message-Id:Date;
	bh=q9+z04Bqm4FN9gErW83nyH7JxYksK1niCmCrKWYz/VQ=;
	b=S+NEJL8j+6NoO6U5o7O/vG2R6bQ6ur4YVgY5Km4M7oy8Q87xEHAPhruBUz1CCsrJ
	Jd9jYZhZz42e9oNj1C/01MdNH2TSpjWjBE7NljAtRAn3aa/kF5Vplf9xV8oViRdNxjn
	87FWky65sql/0XmM50iVRSgwzv8O0/0iMlI76/y0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656941812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q9+z04Bqm4FN9gErW83nyH7JxYksK1niCmCrKWYz/VQ=;
	b=RG3TBGkwGL8PrqPLCUHa9jxUkcHwal3tyK5mvykNAiZCF70jpESqC5WEAUwiATdH
	AnVQEPclrHgZYrJcGVKuG+4zLsPfRN8XXU4UlO26FYGhp5bF1MrzGqfMN9cEIyY/uWX
	uck2VmHASH1jdH4aRb5horO9z716tM+Fv/ilDuqU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c96d9a41-4f021486-3bf4-4573-84f8-dcaa69a9a353-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bf0d809d007dbc3d0a1c7848a125a0237d06455b926ebce1c3b4820ffe037cf
Date: Mon, 4 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656941812
