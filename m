Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB8446A2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 20:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656101212;
	h=To:Subject:From:Message-Id:Date;
	bh=JVqkbFBUvbNQcj4wMfJgWGFXKYAjwOOr8ND+YMMBOdc=;
	b=XSkduaOzHa6jXcBWLn64vWU2+zNI2/EXoF2S8eDiyjbpqj+sMNwR9yG2Nwwfi//E
	+oEG9ImHvXbSb9baMDRtF2zSvJYxj2xb+C7BX0IYuPDyq5B3yJPzQJszAKPW46f9a91
	axCdO3DYwKQTZnBi+kLMKLMwJ5NMim/if/SB3E14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656101212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JVqkbFBUvbNQcj4wMfJgWGFXKYAjwOOr8ND+YMMBOdc=;
	b=S0D4/gs0God5FBu+jP9nxMzuEq2QHavIVBEuUAMoM6C88OA59mcACFK6xcyK9DS9
	wb9HHw5vj1aVio7w8dKOlAjqhnv18AHJYVPOUIBnFEkn8sJoAZspVjj2DTXqy7xbIDv
	dHogE45utjC9r0eFHLOoDIfSUkbgkcq7heiNgRM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181975310c0-a5083c39-2e33-4a03-afb0-ef25b5413ca4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d85a5f829172fc91593e3d9f5601fe80bd8e4e466ab0823f5ca5a712ff276f39
Date: Fri, 24 Jun 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656101212
