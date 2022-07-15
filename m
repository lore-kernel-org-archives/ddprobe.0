Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046A74A04
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 18:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657909612;
	h=To:Subject:From:Message-Id:Date;
	bh=agh+s3YedHrZZvzbPThHp9f4ewbVQhiFwHrInJVC3Ig=;
	b=Z8WQh6izZVyhMiz3EfJ+V1VVWgQCa5fqprWSOm7kqt4RiB6/0rj4sMFh3dXP3ygn
	kQlWHi17FPAAwm3BqvxhyqCbjldc42eSjAEAVuP+bBW4CJerVDv68l0GwSuDXbD5YJn
	SZyftkJTa+2uoN9wC+ERKuT4FN/g0PXOCySihmi4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657909612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=agh+s3YedHrZZvzbPThHp9f4ewbVQhiFwHrInJVC3Ig=;
	b=YIiZwx6gXbITNv8+ghNW/+gxq29NxIEcuIRMXUuxAjpWJCt1rnS1SZpR4Olupz4B
	27p6D9VyUZxjXiC3BqLHjOndyYv99bFHfks1avJoe7WP+0OmhFDLpX7rZazhOp7zTPp
	BYFjpjGFuVFyXfcXqcuKjYE/XxWQY3rfCfkXN5LY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182031d0f0d-ef64b84e-bd4b-464a-8860-f9bd4f2ebd3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3e00759e421133dcc98157fe5189de32faf6e7ea4398e3f0fbf6d1117313f85
Date: Fri, 15 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657909612
