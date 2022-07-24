Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCAC198
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658663812;
	h=To:Subject:From:Message-Id:Date;
	bh=/HC3HE8Eo/8iT63qxrhqfppSLmUMjVsnCCa1cVKxuEI=;
	b=hkwLzBzQyBqdXnPGQOzad3DYOd3hU36ru6xyTpRyfEyRyGQ6ewuXovR1flSNixpX
	3L0zxU2Csn170FDa6gM1QdEHFUrfZokRUsVkMjYp8If5aY07zRPzh5CPdmg1jQK0d9J
	zbnNeo8uQ6c7UwP04IBifYHo6oH1QAvRzM/hS5uU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658663812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/HC3HE8Eo/8iT63qxrhqfppSLmUMjVsnCCa1cVKxuEI=;
	b=QLEaKjAIWHxs7/trRj5nnwHfvW+m1n/MkxcLUDh1TwFSOrmE6gLpxJuPJ2KYVa60
	obWA+HRzt7kKie3ji/pISYkiLEl2O3ksQlFMGVZLbj9BDojdSlWryDWYPImD4NunnEI
	ErOzj4z4WgNJTyS+trNlGOfYwCeyHXNH08TT7REE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018230113cc4-57e72d92-5a17-4b63-af8d-bf3b647fb885-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a705abe31f7ae2c94a0eae58c558cd323e748fb92746f8ddeb763fdc2ab56bb
Date: Sun, 24 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658663812
