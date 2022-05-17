Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA72136C
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 11:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652788499;
	h=To:Subject:From:Message-Id:Date;
	bh=lFq/L9rjY9capaMAX+hoYEpfOqxuqn64PX8DdQINlOI=;
	b=Y+l1Kqy9uMB1lKlrK8wlvjFElDA+b1ClIUWUWTiU/DySFoRRz7Iva6J+VAui579g
	LKyC8V4+/FCvbn59wbglS3H5mDTiyf75iedeWEBUggYRhLgKEHi+uUK5PH7qbpQtkfY
	uhoX7Ibda+wAUMb9Sb/+20eAI321UHiHGx/ZToyc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652788499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lFq/L9rjY9capaMAX+hoYEpfOqxuqn64PX8DdQINlOI=;
	b=Qe6kWrs+Heug4tEMKuMGkHxb57PrCSDBJgfrh9EsvmZAky1zPujTYdULP4Zws7VG
	kcWGE5Xh1XkK4T9JrKinxaFhTHURhQhAK7efUqarpOheYGmb68NT4AIVSwtC8dC3xL7
	Q2fANsBPdhEiI6QllHEPAhDwGL3ktpRxyT+4Ql0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d1df134e-0f970cc8-6b42-4126-a158-574f53454466-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9899294ff033da971be7cae731773f47fed57242f398fba557826bc3ff2d9fe
Date: Tue, 17 May 2022 11:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652788499
