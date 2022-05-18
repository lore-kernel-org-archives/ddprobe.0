Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3EE1852
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 02:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652842799;
	h=To:Subject:From:Message-Id:Date;
	bh=e2rmkCBZ8WZBjmQFWgUzfGShIDzJpIB5oVHZmXOWtz4=;
	b=c1OncIyovPRk1JYR4ZAVg8mvdgSsXsSMRkNJyc/WpThkpyXruUxnBWhv+gezzcyi
	ve5p6l7WcxkRr0zvkewNXOiYyHM3FWxyZqjHdl2f41Rtkr841Nb4Szsj2g4AQXL/ukl
	JJ3eh+JVdcxRYJJGsiSZWU4Ag9lGLHU7UjcT2WeI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652842799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e2rmkCBZ8WZBjmQFWgUzfGShIDzJpIB5oVHZmXOWtz4=;
	b=Cpw/+CznCOifTv2brhk2gRh4QcWFk0CukeMV5NlgOBJnXlKk3VgnuBoTXq3YP+kH
	8rBtpsCFE6fo3m6Z3cLXjUzwabihv34PtDwIsyFdyRuSUejT+UHiRjWBu2qxtainmQZ
	7lOXbm29rV1vzS0pPHspdATW+9UN3hDydzC1uaj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d51ba104-c61f037e-d5c7-42da-b630-47ef1ff73de4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6686f845d752f97ee507506b304580799fac719312838d6b8982d9c9269a6aec
Date: Wed, 18 May 2022 02:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652842799
