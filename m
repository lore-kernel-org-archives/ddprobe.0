Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A5C7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646292984;
	h=To:Subject:From:Message-Id:Date;
	bh=KA+bpPUxRCU0C+mEyz1/S/dcFL4oK4fRxT7Z4hPMeb4=;
	b=iDdEKlWR2dXmJVtiOOQ9FB8A4xthi5dONAeXWqFx6fpAgpMJ2fHTG2IegRPCVXea
	3GrJi8CSOTnca+/vR/cL4mfY2GQl54BeLHCmK2WfWgiBGsb0f1DBjP2PmNjIHmQvusL
	Ozd5QEjeGNmy3en6pN6X7NmTUrdat31y2N4CVMvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646292984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KA+bpPUxRCU0C+mEyz1/S/dcFL4oK4fRxT7Z4hPMeb4=;
	b=S3/0v2Jveld5Ek5U6pkXgqfDYf7b5XkU8Cp8tGWSE8uB7Eaa2jWTAyT6OPu50G3L
	siezdmTd1BisYBkA0rtigLYNCouBZ0nbuITHYGAssZLTP0CAlKM5a9gmTC31UNzZTS9
	Sg2r688KbpC/JvXjcHq6Y9n/1Yow0weDkR3EXwRI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4eb563cc-200afede-116d-4273-9802-5b4dc7f9a510-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53bc1a3da90ade01fdbd6643cf0195c49c00def51e194ad694931ee772df41cb
Date: Thu, 3 Mar 2022 07:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646292984
