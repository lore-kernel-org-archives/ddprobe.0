Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492C733EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656600412;
	h=To:Subject:From:Message-Id:Date;
	bh=Dwb58qRPkckX9w5fj/+bdgYzV7mI2mHEyUC3CsCiadY=;
	b=PfdddxDOF/Gmtl1DZu3TFrdgySiZ0jmPVYHW5KoH7VuvNOFxtxV3AUwxBfO9Eumv
	HUQeVoLELr8nOfr8KEWgs1GxQEidLc33C6ooz2Gm7IIbuI4AOfgeKqJdD+BstklgAIg
	5lhcDf1KMGjg0r2UrkXyvARFXwEDz9ocCJYP/v5c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656600412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dwb58qRPkckX9w5fj/+bdgYzV7mI2mHEyUC3CsCiadY=;
	b=a8KC/TpfbnRPzhUIok5XBsilpulTr6J0gwB0QheeSLvPs0ekSFJUGUsi1J1ZLz5W
	dUpWxlOfMPaGLnQj9zWwHMGRIKGbhxLLNap+5L4hvBj/EZo9H/QU/qidrGueSff6p6I
	heV5LS4YyeH3dQHseD8OwO1IrOUdLL/0XJhF40Do=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b51440ce-2916889a-fcf1-4ad1-b248-68b91b56fbb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ecc94b21fc9e731d53ca5b3a4d24793bb51acb55ae6409834b8ec3c4f443af5
Date: Thu, 30 Jun 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656600412
