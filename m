Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0165A186B
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 18:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648922758;
	h=To:Subject:From:Message-Id:Date;
	bh=skGHoFfqMEu22/7Msug+9p6O4fHTh+n/j9YfqzET3OY=;
	b=XR70T6KqTmO3peKrP3x1EYH/dkxhWO+4B1JJNwO+v8Rre7zUTA3zWtHVIDHcMmU1
	BUrpm63x6smCuFLXbB566Vg6MQBC0Oz6nmxLV4pRcNYGVpi6WFCcTgU8mtLi0YAXh9p
	yxtupNXQuzm4AGHmCk/zdqPOaWbvmKCQOmqkZxLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648922758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=skGHoFfqMEu22/7Msug+9p6O4fHTh+n/j9YfqzET3OY=;
	b=MeNY86FrESpKAvGDTFTzDLE/HN5Gzmv26seRvc/8H6d0dLtilnbNWcm23+yWNvOp
	g/GZVm8G2DIuRMnrGcEgaR/KiikgXvk8ln2DEYMhpmnLJhalZAKF5w6/Sja3h7kNDbF
	gF850joQtNWqwvkFCUts1WE4te1Loq+t7cTKkmNM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017feb748c76-0d5a6817-b17a-42d9-8b8f-461016f3c164-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66360f6f3894dacf1fb9536ce4d21e8966e137f6bc1bfad6cf636e9254c0548b
Date: Sat, 2 Apr 2022 18:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648922758
