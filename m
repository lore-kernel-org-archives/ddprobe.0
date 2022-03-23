Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B8247A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647996385;
	h=To:Subject:From:Message-Id:Date;
	bh=8xqzFmYKLDO2n30D0YiCSg/RGl0gRK/+ZUOiCu6No4I=;
	b=QpZqeggAOyAxlcvZmFjEug+DzJ7oHC6VIBNJJ8HKM7k6+kkdg+K27O4broqwb/TD
	oFKgrOiiYeyRPlzzA1h0LAkZWz0E0gKGEpYtef2zBqrcMbSxOZ9ueRCi4hllqExV+ky
	AKcFmpRu3QVvFLSoH20p+YBH7FJaqfQ9BlT6wiVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647996385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8xqzFmYKLDO2n30D0YiCSg/RGl0gRK/+ZUOiCu6No4I=;
	b=R2sr4QlS3FaVNI+B94/2WnNyHQHBYyYsitgXX9DYJlPlcmCe3x8SRL0vsnr3QFUA
	uivRekbFgMiZorlh8O4bjAMpPAgc9g2XTOazR044Dget1LOBugQGS3gbtlM85fqWHJa
	c49AFwXhisVAmwHTFp2KOEFjZW8DCw2QQ6Aia4B8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb43d35fd-4df98674-df48-4ebe-bfbf-cc63b0f322c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3933379d1b03ba52b007c5df35eddd25e2d56bc97b63c4a7643470532a554d96
Date: Wed, 23 Mar 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647996384
