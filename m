Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE91A52
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 22:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649542798;
	h=To:Subject:From:Message-Id:Date;
	bh=YobOr+8Y9ob4DdUj92fknEVQc3yzx3U5291qBU9oTKg=;
	b=g45PjgVdBkrpb3KPzKF/4gnXhFlAHqHKPlT1/a9b8xYRhobK12/3DWohU1+NsNzw
	/nNA4gIkphE9W955LkoEAmIENi1QjaMIn04mPe22w0huYNk0wHzNmJl8pPGgfWydQqG
	JseV4nSI10x2g29i3V8F4QrFs65Z/0yvOMgdzErk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649542798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YobOr+8Y9ob4DdUj92fknEVQc3yzx3U5291qBU9oTKg=;
	b=XggU02Exmt7kEDuQlJNciIeq22OSmDRg6l/tb4X6fFjBM0gdxvEqPj1uEZRgScM5
	1ipXDgoCg9RFhAXaNXMKz8kxqeN7d/mdWjugXDUAPX28viPHRIwCk2/3/EP+ePXuTSU
	1s2nD3yr82SDTvyHg5rr5SHxMSMju7Wd/oQPde9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018010699bbf-9e472658-8f80-4019-9df1-08a0f352f677-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26eeb7057b49d995e6111d0504e3ecbfaf64f4b152fa0f15d3a4617443bce9c4
Date: Sat, 9 Apr 2022 22:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649542798
