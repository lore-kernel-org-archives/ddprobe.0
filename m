Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF757C
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660815053;
	h=To:Subject:From:Message-Id:Date;
	bh=O5YBK6nRkGi32zh3dm5Y3q/trNIEuV5yxItgiccKldA=;
	b=VhuDqr9aeABJ9Pwo83cvFVLUD2HAC2vFKt7Rr8Ae7gZoSuaJgSHroGP2cNwedSaM
	P8/FnGLsPkwrAeLBvrHcTYoopSC20RfTCZ7apUifQlMFKmdhTHWMhsA/8mGe6QLVz18
	ZWx0IBvD30DUTz8m7t/CMP6fR5L1xB8rrPp+ILvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660815053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O5YBK6nRkGi32zh3dm5Y3q/trNIEuV5yxItgiccKldA=;
	b=ggs9X7k4seL/1KgOSWeU76cUXxK5liRg+NVykJWRz95rlvYEZ3siF1hNK4fBlhXk
	wiAeGlolRKxTOvJ0xTC+9sfTC2SL6V7Mr6ysjiQjDNeBNhlCn/Awb2m+DnnuTCDByb3
	3tQI6394W70lbjG1E8QxKZAlbhDvVYzxm04TF6r4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b04a8f03-71ceba8d-8f6d-4688-b32c-7d1b09995f5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02f92983abd8f1a4964df7edf8ee161b2c1e8a6dae6f5fc19a4f524219b02dad
Date: Thu, 18 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660815052
