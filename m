Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA3B3C1C
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659277252;
	h=To:Subject:From:Message-Id:Date;
	bh=B7DRGDVxSdT/JbxrXncsLdsBcyfHldklGAJOGm7pOAw=;
	b=M7QenudecbPtbPOmW2MpTvcyxn6T+faiebsHWt+4j2//R6aX5lhPEjf1atvCorQZ
	bpzCF7Vx6dzbctrR8JmFWlWhbPMh8CY2Kr14LH+0xyepu5jXKDTqo9G7NvybvKX5iMO
	3arj3zsa0XIE2An3WlN5dsCbCdL9wiu3ATAqV4kw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659277252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B7DRGDVxSdT/JbxrXncsLdsBcyfHldklGAJOGm7pOAw=;
	b=iuF5TpNARZxdYOr23nOD13vJ50QVR3EVU5VvevwyqSnLRoZqlR5o89aVuzZtJQIl
	HXdMGIF3ZWOBV7D1FRCywpSA+FlgP39dtm8Clne2xTmAGNgTnu2q/6ojfBuz147785z
	80NdGNq/iwFCltQuo/uJsyNZK6dAzbV6xMcMV5To=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018254a19815-a9dfa5db-5430-4002-8c0d-7a1217f38ac7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 738c835f8d36b769fa208709992f8173a7afd235c554aa4de3b6e913cc14f4fb
Date: Sun, 31 Jul 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659277252
