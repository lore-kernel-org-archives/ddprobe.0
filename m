Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDD8369
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 08:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653293159;
	h=To:Subject:From:Message-Id:Date;
	bh=MWLd4EQ+PWomZdOZZ/90Vcn8Y+jvbCuhlASi/UahCTo=;
	b=et61Hl9m+8BMQCqQz4/qRndiGdmFEHcrOXnleNCSGZ3NCcq00O/eibxDUCOljLE/
	BZn/FzTXKaM8CHzpZ1bJr86oeace/ENUIHcDXBfm2Vqzq5FIvjstEO8Z0ctRt0RPdQC
	p+NyBJj+pzy0YrbI9SHiQ54+6z/YLvdWu4fKtT1c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653293159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MWLd4EQ+PWomZdOZZ/90Vcn8Y+jvbCuhlASi/UahCTo=;
	b=aUdDsMruY6gjK4naPpUYzf9uJGQkOp53//+00xBMUbDNO4LdgW1VDGK7aU2YauY0
	psBGj7do5xfPZKS1f8TFr77TGtdqgjkPkihVHS24HaiJ7t8zjT7LXvnpaKqWNPCcY7C
	7QCp8zEoXUG+sjFXc05PL1yovH+3tFEtb+x3nrvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eff3934d-d814f1b2-7351-4b7a-b526-c3a2416badd0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 676ae57f40e8397a0d9a1a7474c3a5e295d3864c06c148ce18dc937f31605ebf
Date: Mon, 23 May 2022 08:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653293159
