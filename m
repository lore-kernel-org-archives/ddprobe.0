Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526642F2E
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660750852;
	h=To:Subject:From:Message-Id:Date;
	bh=l02U5yeTGRx54j1E4aBK8q70ZWAY6lp9adrcL4+T5hk=;
	b=bM3bj7hhuGowhti9m5zou8CKg4nVDV6HQzacQSMiM+hWRn8LzEa1MtM19lMlG2QD
	7TAWjm1l6gosl1nAzsTUaYZhxVFmxVXLP77YVO7cAj4Zp3geyxb7uxJPxRMagxo9Ki3
	GFkna+Q8BJyE32lkoHuqWJjDwdzkL5Usr5UOEQFg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660750852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l02U5yeTGRx54j1E4aBK8q70ZWAY6lp9adrcL4+T5hk=;
	b=M1uaimQkiH5TqOGYb4XJkYFbii9QatSf50NIo6u9yGujaXo84oefC+bz5hUi13Gz
	iKYMkkSFBr9UT27VRmtSH3f6BPHI17O1RtsczcWh/12DsGn0vTgGv+nYgi7FCtmrUwx
	/K+RJp/zC1YVYR9VD8gIdILeSyjudKu2U2n4EP9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac76f1aa-fd03cbac-eaef-49ee-b369-c39bc1fb8fbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4ef646a4c5923dcc5e9d1810ca6b2aaa02fa65aa73c5f697533afef007c331b
Date: Wed, 17 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660750852
