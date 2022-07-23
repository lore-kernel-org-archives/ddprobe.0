Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112387E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658556412;
	h=To:Subject:From:Message-Id:Date;
	bh=IJygV4Tv8bo4zTrPRJHEz32xZum4HpG3rLArgWU4pxA=;
	b=BxwuQCOzYkPqRxqAdqkJGjsxc5Ci8U+9acmNri2jKF/CqOhp54eBkj4LlL0lg7pJ
	2XnCcgHJJWB94Xe01d1jIAzl+jmlp9H5d7C+RKlAV0dGfRwl9xjeRvocTa5Spe8nrrq
	zk4glmzVVhM2iWkXcN0PKSRwOpmtKWAAlXZzIUZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658556412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IJygV4Tv8bo4zTrPRJHEz32xZum4HpG3rLArgWU4pxA=;
	b=aAF4NBoAg98U6D9oRpkqKhz71DNIOHcMp6uHUXItJedKYgUJReVT1wy0V4hq8rqe
	/H7hpat4WYVneF/pq7j+8gRpkQJoDzSkDTMyTV68RDQT96yyNYP/BLLK6RxHlN1Mk4O
	OyVlPt/6hmHGDhGYVunSzR+tRYeO3Ioija/A+Sgo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018229aa7195-b472713c-e42d-4d8d-856b-2c29f107308e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d194dd6257e7b84adcd0f178d73a88d9f04b65fdfe0527a9aefb9a30c19ee37
Date: Sat, 23 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658556412
