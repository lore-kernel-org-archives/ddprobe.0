Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF6F7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 12:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658581012;
	h=To:Subject:From:Message-Id:Date;
	bh=nIbyO0XWf/7wiPJZjVOnlKxWYt58SMs2onnWlBZ3D2Q=;
	b=j1z+khIYdV8wyQC/SFMi15wDq2n9GsjHOAteRilAEGDhFakaxzmoKY57aWnAtD5k
	OnpNFhO5YyauzbOzLujjrjU/5MyAiFcXSOsVmNojS9dkFd/5zqlFjtixiFv1MHX3CXV
	+pAnWy/cC0XyFpFcyUz5xIcoSopqSkkXs85cX1HM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658581012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nIbyO0XWf/7wiPJZjVOnlKxWYt58SMs2onnWlBZ3D2Q=;
	b=KhzoEb9hE17CNcd/9jNMaeIuSVTI3oGqe3gf8h08qo18sqmK8QD94QwkqP/spjnz
	1gNSppFw047a+xSAV870Qvs6XC4859dUacPQWtdMXnhpcwBchknMrml2G8ZqnAn6GVX
	rdkD2s+ssVaYIcst+8d5ZoxUqGdPTIRW1SUeKs58=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822b21d014-3bf7e48c-c5af-4a0b-b829-6d913c293810-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f366e709ff84103a81aeebc1e92d0784bfd143f7ebaae12e715940479b9b641
Date: Sat, 23 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658581012
