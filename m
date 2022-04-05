Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187287A
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 00:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649116978;
	h=To:Subject:From:Message-Id:Date;
	bh=eUe6FRe/A5y13glkdVFHUQxHS+oFdiKWr93Q1hzTJBQ=;
	b=i8CHK4rFg8/txdlWg6n9hMF7V05n3yXV/Qqpob3ICPQ8F87sr+HZ7kcP/CAR1z/F
	Ex96kgREGchthF43p0lWwQCstAz4hCJV4SWzhu9aCOrgJY5vdF/z9D96OAU8eagaEGD
	JM3I42++7IgXp7EyNMVxUBzh3LgrFGaNN3mGUmsA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649116978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eUe6FRe/A5y13glkdVFHUQxHS+oFdiKWr93Q1hzTJBQ=;
	b=cBigd1CbvT+1S9IZcbLboHSkIJwjhqmuSOFfH1eu558AB/Ln1ROF9c1yE/wT85CX
	pgV58IzMxkzGKSMQj1mF2RbMsPveS6UnsFvX9fusu1AslKlEpLVXCuZZcHrT/9YZwVt
	9wYEKv4RXz9aUltAkr+sJQTIk4T0C1zsk+GWX3a8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff7081c39-85104e35-2834-485d-b29a-43174c27cfe6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4345f66ff4caff69e5c6c2d6157724765623bf15d7b4e8bf00dcccc68c6b1579
Date: Tue, 5 Apr 2022 00:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649116978
