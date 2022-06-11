Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0D67F3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 09:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654938719;
	h=To:Subject:From:Message-Id:Date;
	bh=Zh+hUGgY6w6sPjSY81qRfbVPVhvgVYGUAhk0hs/w3R8=;
	b=VKNpom2kc3d6aQv3Fe5N/a/vr+3uaPM4pwioaQK7ZCqtNt1Yth8JsJd2LeLvJqXU
	iR7NMJ4aG8I9zpwEuRWs9WXjP/EgZX9+SdCFAAcaSZouUSMLw4ufAeF5E6ViVcfTRUW
	Evp9iID3KUO8zrlcEyeefFC6oj0APKrnwfFuqHsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654938719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zh+hUGgY6w6sPjSY81qRfbVPVhvgVYGUAhk0hs/w3R8=;
	b=Iir20aaY7rh/vYJAcHyObD8jyqVws3wRHfZ/OFSs6qQo1uAoo4i57A27AQ1YwcuD
	/ZCRFcvFoRqdMSUyUpNpqSpRuzCH9hN/Uz4Q0beW21FRibOp83dGXZNK2p/qFnJvbgQ
	TLeoLIUWlk/EvF06NHyfg5aAwOa05orMXfZyK9rI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815208d417-754f50d5-07b3-4dda-a057-c5b260872c1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a655d0a50b625988f45d2caea6c7170954b8af095ed0b3b8b36a073a97834aab
Date: Sat, 11 Jun 2022 09:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654938719
