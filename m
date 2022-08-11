Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613C52904
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660201852;
	h=To:Subject:From:Message-Id:Date;
	bh=c/TaeSbdUnaaIoJ8C7JFfXzk4IOl4iytK35727mB6Vc=;
	b=R0PL/dKjF13Vw73SIqcE3d1phPTsz4eYmu0JVusFcTCz8RCxT3ijadPP3CcDzW83
	34OOQtucDFbRHZ6xEwdBeK2N3H9gnciUHlpVBnJV5JY8FNAp76eNhkE+VtYZEwoKzTh
	/0Vnq5rTm5vX9HHKwocETMpe3MpKLc6okdqrNegU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660201852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c/TaeSbdUnaaIoJ8C7JFfXzk4IOl4iytK35727mB6Vc=;
	b=JlcO8b/vU0S8rjuzUMveq18KpL2oTHEJYGDQIule3hKM/otWjfkv9/h9FREOQdNo
	jTsOA7hIKgwpS6VoRc/1tHwRmmvJ3Ndos7kDFi2Wp4OtaYxifojy4pSDenF4aVmGOA5
	OWpBbfX4qAKwvAeyTc1tFrujf4woT2y0qAzyfpyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828bbdde9f-3f744c06-b246-4c35-9038-663a4b250b48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43a6c122f61cb19e2df48e5f56807eb90a1751d0daba99aad0cdf57fc057a94d
Date: Thu, 11 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660201852
