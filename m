Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719D67A
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 12:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650111958;
	h=To:Subject:From:Message-Id:Date;
	bh=t9AnOa90Nibt1h56jHa8PoymLc6hlwdaRSLFYlyK+qw=;
	b=Cu1qhEZTIYP/RJXW8kk7TsosA4MYkzS9rtDMZAzs1amzgNx0iQANmlsckJYOfKh1
	Oli9AkNDrJ/mKVQigVAJotwDOLTZAeiQwsk5E4+zv5UDov15WJcQAq3GxUm3N16169a
	hntiwFQuLfzN+/2YqsWQ/E6nMM6Avsmk5i6Uybog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650111958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t9AnOa90Nibt1h56jHa8PoymLc6hlwdaRSLFYlyK+qw=;
	b=ZwQTRqV2RSdXnVap8PQeU2OA/G/uWSTzr78G8p/psfnh4SZUxn1A+0bmP+TJbyDo
	ZfahPWJN3pB3/7DNonKL6FzhAUJbfRn1yYOzkVcQqKFH4rt75Zyo8mhblxtlyrSDikd
	CTuiCSHvdZSxK5jz3zdfUDOAiZwgveVMrhOenvxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018032564d10-72b1e237-09e3-427c-93dc-b4eac732ff4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdee8bda9c2549e42fd95b13544b37d4f6663095f5e132496ecc91258cda629f
Date: Sat, 16 Apr 2022 12:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650111958
