Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57668137B
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659010252;
	h=To:Subject:From:Message-Id:Date;
	bh=/5rgg8QBq1ziRJrnYV+SUqzrVRT8M96bHKxFoFz3LkQ=;
	b=BfH6w2oqsq4/9RFiV7JKx7InvvIC07hvqG/liRm6KpKCqWtKE010fCIwJMr0k94i
	o7EWecxzBA0ufgXavDMXLBdvy5JrSIV4BBiBo7Ev1esw59H98B4GVcgG5frXnyWVg6L
	br8qglQNRP7uFmKezBAbL60fNjHoEtcDKYu3OWsA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659010252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/5rgg8QBq1ziRJrnYV+SUqzrVRT8M96bHKxFoFz3LkQ=;
	b=Pq4Tvz9bvmrgyXiYvIM8g+X7xLz2Wc8Ydo76NBZWElOlRzh8NeJ/8KAvRiz9Xvm/
	HSVekRMB2gwzIhFDCbWz5pFRRNhq3Dk+9+ASN6l+HIdlKnNKPZQkt0JewAjv21Rvt3I
	6hCS2Ogwr5MFtOE50qMki82HHq2zSlOrHZMRyeWk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018244b77f53-4dfb41ee-0197-4953-8b9f-342793f8c08a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15dc0dbfe478bf5b971aa52b408b6b129708a1aa3dc3d77a7d4d0ffc90deee38
Date: Thu, 28 Jul 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659010252
