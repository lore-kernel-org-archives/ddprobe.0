Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BA37498
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 19:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656702412;
	h=To:Subject:From:Message-Id:Date;
	bh=lgMyIyGQ/zW+m1nhZ76jDtDIqE704lgdeESqY6dZ4kg=;
	b=Wa5KdC5HnGpNVYVgfUSWIxE3E3eSMvf0wKJT/eLl3Rno+TAjlgFILx8CRvgrdmcD
	d+FOxyYETgEa2vP67XY8VyfNymXJHfgMuvV1Rm6fOHnpRRJj0N1W/FhATM+q1Gl+upF
	WMqnf0PNXMdG5l0GALHHDZ1UC065ZdeNX41h6rO8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656702412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lgMyIyGQ/zW+m1nhZ76jDtDIqE704lgdeESqY6dZ4kg=;
	b=e5D9paaRlGLqbNnP/PTRroJSbxxgdN8cInhSc3RZ8JLgL+HTYylCd1MvUqTuqNwv
	34A2JBWaTEEyM0zrxLYeHm/ucpdp+fjTbLFpqaPCkWH2Uewryel9Gbo/FUEIRhAo8/k
	syZ9vS121IY51EMqxv5SSLk5jeQ97LdSOFLgTl40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb28a604-b8143460-6984-4cb2-8ab6-4a813dd64dee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8414ea18708e27307a1df971ed8fb89c6b1ff9dda8a2bb16594e587da988e5d6
Date: Fri, 1 Jul 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656702412
