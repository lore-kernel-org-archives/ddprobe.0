Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096407C
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 08:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649148538;
	h=To:Subject:From:Message-Id:Date;
	bh=vttVrmtNUZ9BPsHd+sMm9oi9hO01BVQq76OuylGnMjo=;
	b=CkudVayBd5NfRvQ4Gjn5Kw326dNcnm5BIai9t7iH8eOeJtxX+75UDcYvPEEJVW2F
	Y1Qrz/zuWb5FAEf66dnntBW7xcgy49Efm8EwVlkUg7zxQRjHk0WMeYJWt76Gdfo1gNz
	5LSqb2z1gOPA2oXgVGreADavDhGWuI7PbAlzDSt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649148538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vttVrmtNUZ9BPsHd+sMm9oi9hO01BVQq76OuylGnMjo=;
	b=QTjwVDbUyb65sqlzZ1PH/s7PLwIHHjpW0+1OPmiU2V/lYY8Q55+h5JQZC3Y7SueR
	dYAIPpPBXT1Yk5Xc4+q1jrgU0FMLQhyl/VZdhpM+TWfSGOrCId4F9y82isfIV1HpnAs
	llBJISoKW9ejczRxfIDP875LmE5zD6xFqqwPpSwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff8e9ad82-0a102fa3-8a1c-4068-9fc1-11af512d5813-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb600c337dc91527bcdc94f147ee66f31e74d2188c2698990a00d9f973bf50a5
Date: Tue, 5 Apr 2022 08:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649148538
