Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F4F7B
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647826584;
	h=To:Subject:From:Message-Id:Date;
	bh=t5JdLlVo04b8Xry1uuAa7tvqKtHX0FoemRskkPn+N7Q=;
	b=L3UXinoc8/UuS7EmiULn/MRs3cLgX7H2r7nqtQSFdRvPGTGx90qVtSxTSj9o2Zyh
	xTWjJ0qCt3iv8fsRvxqj6k2SmqeQVSX7DJtYde6Ep2pjqRS4U8uRDTLlwbkun7LYeN1
	+ziY5DWXAoTSmq/3kWeHkWUUykY8Vb3AyclRR9J8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647826584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t5JdLlVo04b8Xry1uuAa7tvqKtHX0FoemRskkPn+N7Q=;
	b=LL/6NQYl3EvQPU4xHc2/Ly1mMhjoOnEDFg2oBdl1pVOZtDopT4tJGWPcLxaloCwV
	5HMr8iLruu92Oy4ZJO5glJ+Q9pEpCbXh4JMSzsxYLc14Yp7bYc9pARaB8CzC2IPcSkO
	J1MldcIB+RbJFyet6pdrpsBpd01LsEd1b6rsDbfg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa1e449b-08283c10-f42b-4e7b-8cb6-86619d8823fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc9c4e3d6d6234e6a0671f174157be79944fdcc1447dceded72ebfccaba30847
Date: Mon, 21 Mar 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647826584
