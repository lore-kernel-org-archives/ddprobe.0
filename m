Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BCC15A9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 06:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653026459;
	h=To:Subject:From:Message-Id:Date;
	bh=CDy/8/5VxfJ3vh9ZB8R9pYr2t0PbhnRdMCC9ZTwCndk=;
	b=UARr90aVsu8wN3bCbeqcl1Szr9CxOwogyD4gYdMBz0MmXqT1gq1cpNo2GnY3xN50
	v/fwL9eTNQEgFAfF6vmQNt5J67WPhRjrp3BHBkiDTAV6n7twS8vLVuwrBTs1wnZq52m
	ZzeZOp4SuZ1eiZTpzHgtneagFxRfBd3c0rMXQkhY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653026459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CDy/8/5VxfJ3vh9ZB8R9pYr2t0PbhnRdMCC9ZTwCndk=;
	b=IEPoPKVhFUO8VoS7PLRiOFh0ob2YVMBLZoTDto1fUk+AsfE/1kkmSOHjNm1ki2ws
	C78MkrBxf7282935/pEoTg6dX2GBlpA9D0q09Smh+l/k3CvT+3J9T1s/OdbvrMsbkcB
	La/OY6L883wzQKdqcuZT1yiZdM9H5PpSQLbdWpf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e00e0e88-56fdb67a-918b-4ea2-b3f1-096878c32760-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fc8f8b195a7e26765f50db359aeab95c5f82e6623ac1133ef89dc8609f54143
Date: Fri, 20 May 2022 06:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653026459
