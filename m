Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1541FB7
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 02:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648176238;
	h=To:Subject:From:Message-Id:Date;
	bh=6VIPbdSwSHriQDscn9EXQQqReIHEEL+Zza9nozHHGjA=;
	b=idcP0IXpte2Elg/s1odfplk3oBkkv78p6Ff71ivegbOP0FbdjurFR1xrtDMAlngS
	yXcQZ5Tt80V0LOfokU6OrvQz0RjOD9y+rBZ3+sc4IEJSdTXd3fA1yx32XO4xwiUVRn4
	gwbverxgnOZf7AnkUyZ5HAT/wT61PN+3Le+f02Ag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648176238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6VIPbdSwSHriQDscn9EXQQqReIHEEL+Zza9nozHHGjA=;
	b=SAgwIy2q0sUT5WwkkWOq7VdxhUL413s0D4tKjmN33DzOBmsUZv/3rPZN9gyEXm54
	Ua3GqeiBu77Gh1KQtCPhid+vVMF6LWQq4ibdI/RNIkSdBIY43TY740scUYsOxyjegMu
	0TNQYo6mHlkgCtm1E0qP1evcDtdnlzLakCIifL0I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbef58eb2-d3dc45ce-3921-4a46-92ef-21620dfcca4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9e4253e1995db4ecc494b34938d805f38c44900d8c3fc5632b496f79df26f15
Date: Fri, 25 Mar 2022 02:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648176238
