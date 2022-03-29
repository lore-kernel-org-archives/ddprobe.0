Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9CB29A1
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 22:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648594078;
	h=To:Subject:From:Message-Id:Date;
	bh=ESvzfduuyib4RzuvW7mWGZTzrSOCcxMwMtSpllxQ0FI=;
	b=I1kNgI1FRpbqbLwN3MGjIaFGQ6oUx6ODpfNWLc6uRs8rqdKmY0Q+L0hBrKJSo0Ul
	9VC2+mLcoIJCss0jv5ryQ1UfVlbPpMGvL8sl7fT77UouvQbSJQIy0Gm+TbeoGXIX4k4
	jHnqUzU/wlOMe34IekziTWW76AuxXpDXzniAldPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648594078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ESvzfduuyib4RzuvW7mWGZTzrSOCcxMwMtSpllxQ0FI=;
	b=Ug4Ht2zBmI4sWBxwFsfYKHE/qzPUxkJd5vPcBz3IYe6E/h4bCEPcJ/YGesISWnGK
	EJZD+lGMMnB0pcRR0q83IkJJu5esm4iZN2f9qyhAspu8JrWcdFPeKiF9BGntRMd3TCs
	/cQihD72KwdBLJ7U2ZGoya3hDE6SLFXln2CrZAS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd7dd4a82-f0803455-44e7-46dc-b938-9cb140c5b7e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 630ffe5510e4b3dbfaa70c06a2bc1053d4c0a1778b4038a45fb4ce27770638a4
Date: Tue, 29 Mar 2022 22:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648594078
