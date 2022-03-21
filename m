Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BE9258A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 08:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647849985;
	h=To:Subject:From:Message-Id:Date;
	bh=oYbTIc4dusqfI8XhDsGuvk71+w3WvDXfFl53NZi0CZs=;
	b=LkU4BBZMzehmm3L/P8S4m5lra8PyWkj9GcQXcuPWU6I4wTZTLvtqPFz5/9yg2PpD
	sjQ6RsBIh98GC+DE3SKdm3VOt9DomAyKz13lylZS+5RCgFHPXjRMM02u8RUAMjLDL4x
	az3r5VNXslzMt00JFJFhIOjBkMFaDWkQhIILULhA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647849985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oYbTIc4dusqfI8XhDsGuvk71+w3WvDXfFl53NZi0CZs=;
	b=FAwpn2SYbqOwEbGkDsmTyrOBQjD0hHOKEfVurVC147VvjU49Yhh6P9UvSNSPI18u
	9jxFdJFzgvCYVmGRsoGBMp1SCnzIxRDTcwG7ZMG6QF9goWNsCbF67TGi2aHkUmVpJZE
	oGlMDiAqtAgstbJF+ESAe/g7N+tfiqy+dPX60uAc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fab8352d5-633a54e8-8069-4ba4-be30-71d828446570-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45351d3708a11e836f524e2e899816230b6aa3bf123eb20c9704fcc565bbe1f1
Date: Mon, 21 Mar 2022 08:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647849984
