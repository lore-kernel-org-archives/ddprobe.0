Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58ABD7C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 23:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653692879;
	h=To:Subject:From:Message-Id:Date;
	bh=WbVfVXFp/3BbqN7p/D05eG+u6qt86OWMYldDHanZbaY=;
	b=SBKW7jnnMuYIzk4CpL+rMCqw/NrTIYVa/euxcD+zQiPAhG34AYh8AlkSwvU+j8n4
	Lsq6obn74aKAPvmxi32SS9D8zSvcSV9lFfmpXexGBkWb1ghXQ42gueVMFtwtluywb0h
	xtsG0dEbYkUHigfWRJ/x4q0s3S7UQIqw8l58vHJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653692879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WbVfVXFp/3BbqN7p/D05eG+u6qt86OWMYldDHanZbaY=;
	b=aU0EvdPeqGWRR2cTZd9VyrktghvOl2BTE0Rhz1DZAErF3YVIhUHMfkY3240Jp9qS
	MkmCAbw6xO/KRCdlNZ79WKg2XN0O2GnwqlYWdUh84yguQmBGuB5+VoM1de/TVoj/qMA
	f4FwvVC4mYnFa9RwseLFlBOBTTNpyxZc9086l7bo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018107c6d21c-1527e89f-c6e0-4748-a63c-fef1c7527e67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eccc84bef9b87cc6b0ff0de86c0e8e1608e6966b6b546423beb3ba2660ebc289
Date: Fri, 27 May 2022 23:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653692879
