Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258487A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657416412;
	h=To:Subject:From:Message-Id:Date;
	bh=gbfrpQtFA42EA0Xk/wV5EcqXWYnMs/YZVqq1AnkpZrg=;
	b=YkQGd/8b+xtZ8D4z8lxDU5ZP2qAwlkpqt2aAETc7vEuWyhBfJOobzgsPY5C6iAAK
	EKfejH8W1qwp2XWruvWBMtHqZkAHgQUlz134Q0DlmZqO9F6opptrxxq4PDwb3kH1ZtG
	vCiRSYh7cpnkiaRqLxOk6Qw49/BhgvxUSvNI4wYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657416412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gbfrpQtFA42EA0Xk/wV5EcqXWYnMs/YZVqq1AnkpZrg=;
	b=LKiGhPxYMteGjwxNV5uRN7YDfAK389VuipcFaF14TW3gHpP3Va86Qr9Kk0lO5Fdb
	admNxfeftdf72FpjtGmXEPOiBFZZ+GO0pZ/tzi//yaZSi2ADBJKdqCu9vfY+cq0Dx+Y
	kOKyDONsNafsgsQ9GaRJ2sWGw4CUIV3844++Srw0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e5b76cf6-4f171462-8be7-42e0-be52-80bcaa157a2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b32fbf1e9e0c3e816fc55f0da5dcdfcef35cfeaa7a3f6cf1bbec51bcdf38c08
Date: Sun, 10 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657416412
