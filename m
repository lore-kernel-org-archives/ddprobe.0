Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3E01371
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660313452;
	h=To:Subject:From:Message-Id:Date;
	bh=RdlIvCHR+dSbl/pcNcNPjjHxAFfD95yEX0qp1qtWYgw=;
	b=M3Jj8+JHQbqpHt1Q3XfzxHRmDAYqv+OhsUJ25B4KBXcD7V5zUOXcWKLkMdmYT9I0
	j/mvh0UgsJFmFujSsrgf9m8sK4q1Kov3Dmci0EF00jZ2HdoiUeGX/D7fqFPjKIWCNbL
	oT10cS6b/Wmp8sgURbE2BdSyqq7zNP5kHQAmArvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660313452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RdlIvCHR+dSbl/pcNcNPjjHxAFfD95yEX0qp1qtWYgw=;
	b=M6yHWJAsyZLpuEZxBvmkJKxs9SEi3oPqAv4u/+wFYk0PTpUjYYUoQLE+PJvYAVTs
	julzzb06ZirprEXhrqQks5P+98CGZ5BjeQYUsUJ1xNpuNNT+fvdQCnCyN/OMewSrIT4
	PUh3R83Q1xM+UHXNclwJDBO0sKp4+re4j+KSlDR0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829264c001-0f7ebafd-f4a8-46c6-9591-22e61cf40e0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52e86945dafee4a191a2144e18789df7bee40f88330e69be4b134c604477a3c0
Date: Fri, 12 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660313452
