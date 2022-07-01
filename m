Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2170910F3
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 02:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656643012;
	h=To:Subject:From:Message-Id:Date;
	bh=Fmlm1QFV7OeckIUHLXsVIc9DufiMlRBxhbZ2GF6hI9k=;
	b=kqKW4g4Qvkf5htJLaxmhqskTv8eIfgjpYROCjGq7zaHknGyZO8I+GuDKBauHemHo
	XlasGPXKmouNYOl17NWXKfQDB+q8pDqV4Pgw/TiyUjt/wz6fD+XtLZtg2a/B12jhmxD
	RvYVpr0EKh9zsfrFywymeUKid+PZ1BcNVQ/aCWnk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656643012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fmlm1QFV7OeckIUHLXsVIc9DufiMlRBxhbZ2GF6hI9k=;
	b=NbdInqN6Ph9uYqrTdp9k6CMOCmRo0gazBgGsXq8rnMQvexKQLKDMbmcZlgR8vA8X
	IhENlg3bFAKDrTjuaPbKgSnJFOCbvYgq94NXF0EIuif/Gvx9qNRMykJFsl4RRASgn4w
	KH2TkinAZ5yMVGect0sT8t6+MXd4Rngy7UjKzMDY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b79e46bf-6c01aabe-8308-460a-931f-aa0294b5effd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9250f703ce1b977df599c41770ee9841c5ee967adff3a9d2ec2cd47d40ce79d6
Date: Fri, 1 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656643012
