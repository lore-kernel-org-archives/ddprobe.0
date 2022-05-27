Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D771FA5
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 15:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653666119;
	h=To:Subject:From:Message-Id:Date;
	bh=hjOqoVW6cIufJjr5IWxFSBOIO6TatUE0OzAWaS91l2s=;
	b=ijcq9WUU7Iw9pgGzXLU6NWcHP3/d47xwnGiv2XU/q7YARzjTM4s6aWRq2pEHv4Do
	4X9NzwHzTRbFSV7TjHvU0ng8c7RqU5rBYjMxmwq1TfFgmN3kSVf3MlNzTzRRsNBG3Gm
	yZJLvYXi2MiW/Ux5D62LARR24Fk2XhNYy1SoGx8o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653666119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hjOqoVW6cIufJjr5IWxFSBOIO6TatUE0OzAWaS91l2s=;
	b=HD0A7MMyLz+QtrrT7WoXpY0FyWDVYtf+BX7M73m5pY2DqKlgCTnW+7+nJgw8hhQZ
	PW84kzca7GfUbfUe85OidGhAT2UpV/20PAO60/XDk5tBhYZ3c8lSfZaKp8P8t2LNlTw
	k8gIiB8e8KzEbxWhNW0ww8vbwjO92ND5YQ4glQww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181062e7e6d-bfeea350-61aa-48d3-8903-6160edce9ba8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dc59524d6d633c05a61c2cc6a8ca31ed699866bbd72ee877c8100605b3d6370
Date: Fri, 27 May 2022 15:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653666119
