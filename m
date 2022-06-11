Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A2C7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 13:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654955279;
	h=To:Subject:From:Message-Id:Date;
	bh=2ltWAxMZUNrIh4175HOzDskN6xzYUmqOryCORC59X54=;
	b=gVHs/rrusbgbv7EbrvDFI+w5Q4Q3uVFb4/siNxPMdwv9k8wQy/TzFrjQVzomLrxL
	AzUK+av6gE7TAkXiZO2Vve4TSqC66VYmUzts6iewxcxmme/ad85XOMn7ufsJC9nxVgn
	jf90gu+4h0QdzLjtk8od1uA8n3cfMtUeBZ04Am1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654955279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2ltWAxMZUNrIh4175HOzDskN6xzYUmqOryCORC59X54=;
	b=C6G/S3OptQ2lP0Rii8IwAmpWvtuvKvPKmVy6oSHzLkY1tlLqEJN91bFqWXxSeisg
	cBoyUSOtpakPT27P3hEqoPLUZY6aHN83DYnJltq1a6jqfVBig2bvoe5RxT4PFTMODf5
	9lsIimAxDP8VZhEmEPaux3kYgMMo4FZWgIGsFkYk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181530583fc-a8f56d9f-97cd-4d40-bb1b-c4a861a2285a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26bb711201cb94f8b0be2f1e02ec2c74dc81af78a696df589b5206bba4907285
Date: Sat, 11 Jun 2022 13:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654955279
