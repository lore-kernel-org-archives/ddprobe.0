Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76F87B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 17:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656611212;
	h=To:Subject:From:Message-Id:Date;
	bh=BFvPOVyl/6l44XB5B+6/pTwa5C/K2e0wNuOflM4EEIU=;
	b=OZ/oB90w7QIaHJ3PoyYIV14Tkq/MRvC268I9cAgx31ermtQZxTqJ7dkfk3+RECa+
	QyVawBurkmfF4D8iiMUVetP6ygdjIJmQCvmck59ZlZig31ANdBMwrfbaEKZo+zufM7P
	jp7AJl73KtzkGPGzssFMskMIcCoqDvLhd7ExTZuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656611212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BFvPOVyl/6l44XB5B+6/pTwa5C/K2e0wNuOflM4EEIU=;
	b=ca2snE3v65Q7dHQ2FruD5Afi6D+xhZ/tpnVDYg/B1BKSsJ4RJWdwNTr5NXo825gL
	mnzSYk3p8LFU72faVm3cK4B/gU9yfsNC0/EymN2XWPaP9OmhAO8nj+Wg7X6V2ar3Rrf
	4zRN+sH32NzIYquZQbFHVNDSsSiufi8idD6Ln16M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b5b90c00-7c688507-fd55-4bd5-b84c-95f2eeadc75e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d055fa95002846b642e201f486e9fb9a40e6871a3d7444c32d814903ec5ba8c3
Date: Thu, 30 Jun 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656611212
