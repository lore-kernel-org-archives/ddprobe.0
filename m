Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD5315AC
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660804852;
	h=To:Subject:From:Message-Id:Date;
	bh=LJehH4LZop/y5GZYSlZRUrO5INp/jARQ9Qz+r281koc=;
	b=IAOo2VQYYv7uRmmBQNT0hwp+LHwXBLwPCOUKQML2M898ijrXlg3FZ8KKQKrek/81
	OdHmmtzplhZTmDUrCps9ISG3MRmatv0f2abWTfbywS2TMi1IkuF0RabAke6+AQEITDM
	adPjIwThCOQi7ANHnGrdTlolZHScyj0GV9/kR4fo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660804852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LJehH4LZop/y5GZYSlZRUrO5INp/jARQ9Qz+r281koc=;
	b=FehjYmKEI+08uHWRO28X8EKMp4oAtAWzhWgXmh2HF8mKSmRVNPVH+UsfwUsHXcqv
	+s8agAbHQ1EpYnPt5V5aZJSP9Yq5Yj1vCREJ1qpb/RmSU+nSPlUXnnZlf0wF8wgVdbV
	mXEOlWrXv6l2OiXf6/IP6rhfwrRTeJfpiQ2P+RjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182afaeeb65-ef0848e5-925b-466d-8087-1d37f884cdaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab9cc06cb806521e8a68e55d43e0351277adc29bc7ff63a8af7013e0f350b18a
Date: Thu, 18 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660804852
