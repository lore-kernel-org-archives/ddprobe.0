Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669B710F8
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659766852;
	h=To:Subject:From:Message-Id:Date;
	bh=yz4ShMH73Tu+WlJuSl+f5cuUtR4fQzApn9bvjcMfZZg=;
	b=Q6ymBBzWBQq8SMg4wulMNDM6E7JUScB3DeVBkuPyN1zdt3Pmj1HspQyFCE088+6S
	RBLyR8MMuYDncKX7rm2MTpSRDJNRD2Q6z8Hwk//xBkmvPUfNvjKEsA3+zLwEBkeQnND
	xuPbb8jtG6wdpKYaGe4h5hWM3ENFt2393ZqXtjVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659766852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yz4ShMH73Tu+WlJuSl+f5cuUtR4fQzApn9bvjcMfZZg=;
	b=Vj8wdjLjxFDMCCz7G4L6goXB81SDSjP8wCaD/b3m588YbbU3lYbyUGhWHN1+BH+l
	qLdIovvdWt3jdQMbClKLBQ2nQeX1PpGbUI5pspU8RI80Lahw1Rm/Qt20EksrFa+bj/I
	/ckaQ+Z/8RluUrL6/2MhT7vVec21kmVWf0CN8yQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018271d04bfc-a9b665ed-c1fa-4208-bd1a-8dffb71c07a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 379a6cd2886f4f28485d816c47d70f428e040c538a333c4d2b3c7864bd1d47d8
Date: Sat, 6 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659766852
