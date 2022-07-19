Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF1C3C28
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658246812;
	h=To:Subject:From:Message-Id:Date;
	bh=ED1DLIlwR5XHs1yoP0/2YJWgSEfJ72D7oYogVE1CkEI=;
	b=i5FQNaMm3kV4LZflgueblNLMaHygegAAm3tfnjoCm/cAMIuo7R1BLqwjDkL7jaxh
	6cES+2sBYfMVJYqUVBpre8XHRo4IErZQXMUAkUsWeHfhVswcx2eiPME8IRivNF3kTnJ
	B/PzCtGYIL6O9SDKr9eYcuwJ0/mt18Uz+O1UsMO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658246812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ED1DLIlwR5XHs1yoP0/2YJWgSEfJ72D7oYogVE1CkEI=;
	b=K7tL9zJv0VLEarytphN2Ik29HWI/Ukt9YfPZff2vwniXX+i8RVncfs1VZ2tjbr4j
	kF9EaAIv5KiASbydKF1Ao8u6yRA7FJ3HVwwpHCTf9RdD7+Bfu64xpw5/td141yk8eIb
	CtwBU4ihFiPfUbhKTf4aYv9N/B2bIVhVuRWRDda8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182173652bc-2e065007-7b55-4ca8-974a-17115cd9ea35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 178462a6c0a18f946e1e815514aa8a4c51e2addf70413ba795c8b1eda4b2c165
Date: Tue, 19 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658246812
