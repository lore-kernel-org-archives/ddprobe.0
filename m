Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A72CF48DB
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647541285;
	h=To:Subject:From:Message-Id:Date;
	bh=noF7sKPeDqrJtKaM4OoFxDLwJT3X3UJn/0Byv9LMm3M=;
	b=Z5C7lt4P9JTyEQ/WnsOd8rykzCE81MwTkFV+UvwDY0ZW5eVBRpdtTAjy/JxeUI51
	03e+i1NIGJDLCzJSMgLop/NNBLlP5+J4XqaZkbaz6Emz+PqdMEipqry70h3Rs6X+NMl
	jGX/1dCCw0E4QII2ItuTjsYQSyta9XH7SSaSWDt0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647541285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=noF7sKPeDqrJtKaM4OoFxDLwJT3X3UJn/0Byv9LMm3M=;
	b=FnUgw48WUNZsg6feDL63c94mzfm15qUuAmrBKWP2KMrMlHdvAAZc9hkCGmfc3LDc
	bnlR0iMrm8snaC44fNFCUfIe7jJucVkZ50w6WCKBWBm8EAtfsWIUl5XjoEQWcdZwmpc
	7l02S8yPkhNS5Qx/WJRqIifXnNzpjPBVkn3vqap0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f991cefd6-ca950fcb-ccd5-406d-a1fc-209df1cd2fd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37a573f74d038938ef2eb88cfd85f4c6bcb9fe8450db43185d331cb2bfce29af
Date: Thu, 17 Mar 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647541284
