Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD161843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 22:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655936039;
	h=To:Subject:From:Message-Id:Date;
	bh=OoH82hY54yTTlIY0kyO1AIBZZHq4DZ8w/RjZBMRzVis=;
	b=F/FyT4F8LkCrW5EsFy0D+c+u8yDtX/INE7HOyNVANSULwWllFndSSRb73pRnFe52
	XrDthLlZXCxqctB8ubiXJV8sxD5+9tFhcJSSxvZwDbx89ihts0gkSyqXGsxYvlJ68px
	QHfWNsPaAGMBT0Mftlc4e9KNZDO7VNHymiMRwtpI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655936039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OoH82hY54yTTlIY0kyO1AIBZZHq4DZ8w/RjZBMRzVis=;
	b=b5JGHXbxeEC0wIClvVxGxR0Try4UGk1tkI8kCqTu2HI5z4G4FT4KcJ8SOdMcTZiV
	7JaWRzQOpdGH0BcUUo0sev4x9PtHICsHnNa0tfGz+2xk6iOZzHZD/YUuTy+fs8UnkAy
	wxLkqutqENP2yjMrVhqq7JPfTWcL2V7fzq95ZEcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818d7ab984-61ffb1e4-3b02-44e2-8041-d66ffec2dfd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9bf8c62c73f8f6896ac353ff75dbcb087158d62c155994b39ab8f4a62d8b7c37
Date: Wed, 22 Jun 2022 22:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655936039
