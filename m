Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E545F23A3
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 20:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653685019;
	h=To:Subject:From:Message-Id:Date;
	bh=hwGlE7/Df9voCMmiVlRwPXv/mUQxSzDHIKRA3LZtOsY=;
	b=BxqAqkrrStPeIIDuqcDgP1FhRzsNIe3aMDZ7jHw99pyE+YQQjGh0YssZa8Kt/4nY
	b7cTgl8HjdMNXsE+/hQhfDzh/amQBP+nBYgAOLRon2gjqo4u6rgRJO8bYnnwnLUad0w
	hFsoeUDRccMkeJLLgzL5Ia3vRPzbjli3gQpyuQQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653685019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hwGlE7/Df9voCMmiVlRwPXv/mUQxSzDHIKRA3LZtOsY=;
	b=f+O18cKg/upUNl70QzN5EpLJdcxsr7FAaVvMOqxxqb7+9eIbMdJ+Jf2v6hg5lWHN
	vxa7Ug78BEs/FJma1yKRG0qSkqEsqOJTjOR96lnF0qXN6LOTXv7fSFLS4Wh/k8qBMVz
	RKk6p1wkECh8kCqJnRfPAXzgNrtZcuFVxXhXnFFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181074ee273-4e6b84ac-4659-4102-9147-7032e576300a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e064ff7975e20a3bdfb4f78dfb0ee71cd068e611c86e4940b1bc495a9a627fa7
Date: Fri, 27 May 2022 20:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653685019
