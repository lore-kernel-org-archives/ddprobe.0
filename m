Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7965B7C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645801585;
	h=To:Subject:From:Message-Id:Date;
	bh=GLu5sklHvO8LReaWJYHDxNuF2v1R+nZRh4wE+8ffsZ0=;
	b=bPPIehac22iG7MEQ9NOnzFiuwPCP+SSR5tYGXqfBuV8JqEKlLABEqkHkNl/D+dfV
	+G6Nf3y8UVZqNx0thnXWXyNgEf9opDTyisWu9elvUiFiiLfZx44LJAb+LHAzT75wMqX
	LpumkVSFJFYvdwElCf5a2+3Pa11nmt0KXJ+6MAE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645801585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GLu5sklHvO8LReaWJYHDxNuF2v1R+nZRh4wE+8ffsZ0=;
	b=IO8JG/JbzmWT5JjuwONH1G+JuhbzzF8aJYfBxamhA9SDbYmsVgSCU1RN2ea5h6Yg
	MViqQpjgoXQAGphDxBRR3qgLAhSRMmbGVNYSOvpoY56jBOFV05qDbDrLOrKqWGTZI8W
	V6YvChTQnpq/wkPGj/HZWqwaNTCS0kK3/RYby6VE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f316b3892-5f4343c2-dc24-4125-8bc1-cba99ed0d75b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 863f7cf2617ddc279513ef0b9d3c57474e395b4493d534d2cae7cb39abece7c3
Date: Fri, 25 Feb 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645801584
