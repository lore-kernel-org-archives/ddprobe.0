Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F0C17C9
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 00:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657067812;
	h=To:Subject:From:Message-Id:Date;
	bh=Q/CoAcyJILIlFqng+PJYyHR6nYAzyLF7fCAWhf928Z0=;
	b=jzbkg5eOFcjrVUqdFJU4PyzVyOB6sKkedM69YW7ZBh14spoWIl3oujIK/HqtNZT4
	837oNYQiFVM5nvpf9HvlVdbRy7mKThifkuRVllL2tAOv1AsuMCgHqEOEgriuN5k1z18
	8T2uHReTh81entyMPLVQcRP8RxEc2qKvZKpCaD2Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657067812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q/CoAcyJILIlFqng+PJYyHR6nYAzyLF7fCAWhf928Z0=;
	b=gFLaJxG1GeknE/rx6pGZYQnYWR0T3kAUFtrNulYnHA2BT4LBJyFAnZvmSeDKTfO+
	l4JKjXAhwNNprjb/bqdJ7wFNfRUUME8Adv/ZKhtQP8nHHjP0J0v8TDlC9i+IkUmPyRA
	0mAFno/DYUabNSrODhjp2PwUE8coGDtpi/NIxgqY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d0f035d7-5814010d-6951-4976-91d5-49c4eb776345-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b43b036ec39ffc50ff7f1999e32c5d7788ed1ff7efd3403139d6c5529ebd0bc1
Date: Wed, 6 Jul 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657067812
