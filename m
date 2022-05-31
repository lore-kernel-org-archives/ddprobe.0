Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6070B7A
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 03:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653968879;
	h=To:Subject:From:Message-Id:Date;
	bh=zD2UwYPY/4QAvH+afQeW9rQlctlUVdif6lOeqS4z6Dg=;
	b=egf07QoiOW0CyobatxrBYAeJP2EZYAiss/PJhQejGDrx0z5RKqWmu7JwwI5wEuRY
	IewYjfmvhtR+U6i8dft/1oSlcNJD+putmEHbC2OKYUgFcz5pdbn2lMKe7og62szJTUk
	bPlYZrOlrsVJx6yXss4GF9R37JL5leVjVq419ktU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653968879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zD2UwYPY/4QAvH+afQeW9rQlctlUVdif6lOeqS4z6Dg=;
	b=ASpmgz+atISKqS6Tjc8fSy+pqZewiqEaFeBDOxFz1HdtHSrS0VCYsNROYAC2rupT
	rk0/dpl2iOpgY3jb6xPFJvEdCS9L9X9pwqVk7hQ9NibRQ6359gvKBNgNTPPFzUqLJ0h
	nCNQDfI3HOFniLFZlCxeG72xmZmGnhjeqfjsoxg8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181183a3e76-ad9410df-59a8-45f4-ac55-0f357e85148a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a78c6ed91748fdb91d7ccdfbffe9fc875565776b755676f159e2deaa177771e4
Date: Tue, 31 May 2022 03:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653968879
