Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4AE37E
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 08:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650097738;
	h=To:Subject:From:Message-Id:Date;
	bh=Xr4DhUS1Wo3/SaF9N/KI+eycyDI5kZrdFV8ZSbrzh4A=;
	b=Rl0sq3Rob4iZoi/z8E6FAeynXS/9KJcNlHL0bneLoe5yWW0eCIcwgzDzdvCMWbgk
	kepk4h3rXqmWd/KD7Ig5ZwgGnVJeA4DeyuiWN3QQTlo4FApANSYdoGwIXecgtN3gsb8
	M6V5HYk4PMtMjJA13mUaWR+vsEcmlHkIOf2AnMKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650097738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xr4DhUS1Wo3/SaF9N/KI+eycyDI5kZrdFV8ZSbrzh4A=;
	b=fy4jcczWPtjKUuDTWIxVH+RwQVQnChwffOazArBF6rXcGcmjlJExK75sWo+/cz2r
	yD1IyV/URMDdDHUfvK7i2muYX3WAE498aBRA9XxLp8jgsNfCaFVGkd2rpZLk7ojiwtu
	LaHqsqK/rDrAGqAy5p9IMLyXZQi1FT44l5pgrhRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180317d523c-5a467aee-53e0-4bbb-aafa-d474a470d479-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56e30d8691ae068fee5a668541f2ccebc3b484dc2fb76fd642a66e53ae028a15
Date: Sat, 16 Apr 2022 08:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650097738
