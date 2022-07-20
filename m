Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA49C7B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 00:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658277412;
	h=To:Subject:From:Message-Id:Date;
	bh=tx8jmdeYT4pZUnH5sPYvHUa7L1PLCoZKIEYXRXwiP8A=;
	b=EpNAqeWhk61MXcpc5P2xtdIPsOBQPR5IuHrSBhw4/K3oCW7brggppMhPCfrkIpdw
	tjCG2SfpHdHekz5kpAJtFcwa1Timn+DwD5rbKS1eC5k9G8t6OZUQUkbcWZfqhJMtXV2
	Yo165GHi/scIDt+aMlgJDk33xsfXVmMEykxTaA/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658277412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tx8jmdeYT4pZUnH5sPYvHUa7L1PLCoZKIEYXRXwiP8A=;
	b=PyG2zAVPs3fP+5/wbcNCOSkkeh7LeF18CUlOSqBVV/EwnfAiPIU+HTZcYaC7lC+t
	yUcqWSmvz5JAcFGpBD/ZYFxm0z6+16x+V8fpuTbjso2tpgzif4lSIO5QNbj7IDmW8pM
	N4Np6Dw7NDsuBVaOUKjEsooBK2B3tAGzHfam+xk8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018219093dd0-69d98c1c-9a8f-49c9-90a2-0f18c03619fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7e2a5ffa4c4f548455dcbba0c067134d383c62c78c4b36a30c9ef80a1658fde
Date: Wed, 20 Jul 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658277412
