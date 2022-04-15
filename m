Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2CD7E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 14:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650031918;
	h=To:Subject:From:Message-Id:Date;
	bh=MwcNfzwYN/NoWAulTT3t7R466o3yVni+Btv+aKzevOc=;
	b=DTxUM/GHO/PNps2AcXtcw9+d04W89UpRf5PhhuYQY8vugVy72MMgaWFyrM6wMTJc
	p/K/DGM1kYTP1MNoqS3misjshUXcewoLQ5PqoHNEQ8vkByYAAYAy4JW7lsywRoLjwMj
	zhiwlSN5OFhohIxJ3VNrwbSM+r9172Vu8kU615kc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650031918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MwcNfzwYN/NoWAulTT3t7R466o3yVni+Btv+aKzevOc=;
	b=XrDuJX1z8sgrlvN84OmJ99lZaMd1gDhvfCtxc3sGHtzFZh2E8zithEqyOLqlul0z
	MP8nthIKU5C8ErQZYVGeIPFfS0wpBiUpubTHBmdyahOgaWDkVyu5T/hnRpWJSA9Y7UB
	/OAlZKBtcYKAXFepN1iOr4wwoY1FU814R13As43k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d90fcc9-cf100efb-e360-447d-b62e-356c7adbcbc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1fb20e495f6bfb1217518133217436644fa72545607486259a06332201bf9bf
Date: Fri, 15 Apr 2022 14:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650031918
