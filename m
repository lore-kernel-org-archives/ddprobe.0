Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB86D7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659482453;
	h=To:Subject:From:Message-Id:Date;
	bh=tyE3dL2Nsi47NAsxNSVszQc+LpR49JAAC7SmpjWOrUA=;
	b=QnE2Uc0PyWOEqeem3BSyGoZIirUnY5MvXz1FMzHRgm7EPful1VR9OVaxKofwp/HV
	5gALI8ynxbb/AVK8vED3w/m9oSni/bkkUAI3JJR1SpJTxT49XiiYJybroPKAtSqdcd8
	48gwZh2Gh/EdsPAECCKaogpzN1bvdofVj3Bk3eJc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659482453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tyE3dL2Nsi47NAsxNSVszQc+LpR49JAAC7SmpjWOrUA=;
	b=kCu3tklnEDoer3CGwbMi4qgRVnsQOKsKBuLVbfc1JmfAQ9oG/g+RqV0m/N/eamQC
	nP8FH9+ySKp9UGpbOUHy2WmUJb88nbMu3HkfzaqopOObQSVwHe7BQp9M6OIIFEeRGPE
	/w5nvhhe9Ndt3jaVNIKLOCE9nOSlo3vpAhU6cWRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018260dcb32c-4a241bf3-6816-4b72-bf4e-de23d619533d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95cfaa969cffc527c51987345d99bd4e380138708a427e51534e782eef713a09
Date: Tue, 2 Aug 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659482452
